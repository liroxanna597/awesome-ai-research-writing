# OpenSkills 安装说明（本仓库）

## 先回答：你现在具体该怎么操作？

如果你的目标是：**把 skill 装到你自己的项目里，然后让支持 `AGENTS.md` 的 agent 能调用**，请直接按下面 6 步做。

### 方案 A：安装 `numman-ali/openskills` 里找到的那个 skill

1. 进入你的项目目录：

   ```bash
   cd /你的项目目录
   ```

2. 确认本机可以访问 GitHub，并且 Python / Node 可用：

   ```bash
   python3 --version
   node -v
   git --version
   ```

3. 安装这个仓库里实际包含 `SKILL.md` 的 skill：

   ```bash
   python3 /opt/codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
     --repo numman-ali/openskills \
     --path examples/my-first-skill
   ```

4. 安装完成后，检查 skill 是否已经出现在你的 Codex skills 目录里：

   ```bash
   ls ~/.codex/skills
   ```

5. 重启 Codex / agent 会话。

6. 然后你就可以在合适的任务里使用它了。

> 但要注意：`examples/my-first-skill` 是 **示例 skill**，更适合学习 skill 结构，不是专门给“学术写作”设计的。

### 方案 B：如果你的目标是“学术写作”，更推荐这样做

`numman-ali/openskills` 这个仓库本身是 **OpenSkills CLI 工具仓库**，不是一个以“学术写作 skills”为主的仓库。  
所以如果你真正想提升论文写作、文献整理、研究流程，推荐安装一套更偏研究/写作的 skills：

```bash
cd /你的项目目录
npx openskills install anthropics/skills --universal
npx openskills sync -y
```

执行后会发生两件事：

- skills 会安装到 `./.agent/skills/`
- `AGENTS.md` 会被生成或更新，agent 才能“看见”这些 skills

最后重启你的 agent 会话，就可以使用。

## 你问的两条命令是否正确？

是的，这两条都正确，但用途不同：

- `npx openskills install your-org/your-skills`
  - 用于安装 **公开 GitHub 仓库**（owner/repo 形式）。
- `npx openskills install git@github.com:your-org/private-skills.git`
  - 用于安装 **私有仓库**（SSH Git URL，需要本机已配置 SSH key）。

## 本仓库建议安装方式（可在 AGENTS.md 中通用）

建议使用 universal 模式，避免和 Claude 的 marketplace 目录冲突：

```bash
npx openskills install anthropics/skills --universal
npx openskills sync -y
```

这会把技能安装到：

- `./.agent/skills/`（项目级，推荐）

并把可用技能表写入 `AGENTS.md`，供支持 AGENTS.md 的 agent 使用。

## 如果你要安装自己的技能仓库

```bash
npx openskills install your-org/your-skills --universal
npx openskills sync -y
```

私有仓库：

```bash
npx openskills install git@github.com:your-org/private-skills.git --universal
npx openskills sync -y
```

## 本环境当前状态（受限）

当前容器访问 npm/GitHub 受限（403 / 网络不可达），所以无法在此环境完成在线安装。

你可以在本地可联网环境执行上面的命令；执行后重启你的 agent 会话即可生效。

## 指定仓库（numman-ali/openskills）的 SKILL.md 目录与安装

已定位到该仓库包含 `SKILL.md` 的目录为：

- `examples/my-first-skill`

对应安装命令：

```bash
python3 /opt/codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo numman-ali/openskills \
  --path examples/my-first-skill
```

说明：

- 该 skill 是示例性质（用于学习/测试 skill 格式），并非专门的“学术写作”技能。
- 如果目标是“学术写作能力提升”，建议再安装一套专门写作/研究类 skills（例如从 `anthropics/skills` 中挑选写作相关技能）。

## 安装成功后，怎么判断“现在真的能用了”？

满足下面 3 条，就说明基本可用了：

1. 能看到安装后的 skill 目录：

   ```bash
   ls ~/.codex/skills
   ```

2. 如果你走的是 `npx openskills ... --universal` 路线，项目里应出现：

   ```bash
   ./.agent/skills/
   AGENTS.md
   ```

3. 重启 agent 后，它能从 `AGENTS.md` 里读取 available skills。

如果你愿意，我下一步可以继续直接帮你做两件事中的一个：

- **选项 1：** 继续帮你从 `anthropics/skills` 里挑最适合学术写作的 skill 名单。
- **选项 2：** 根据你的论文场景（文献综述 / 改写润色 / 大纲生成 / 引用整理）帮你设计一套最适合的 skills 安装方案。
