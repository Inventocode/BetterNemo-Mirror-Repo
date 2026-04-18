.class public Lcom/codemao/creativestore/bean/BcmVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "BcmVO.java"


# instance fields
.field private actors:Lcom/codemao/creativestore/bean/ActorsVO;

.field private app_version:Ljava/lang/String;

.field private audios:Lcom/codemao/creativestore/bean/SoundsVO;

.field private block_count:Lcom/codemao/creativestore/bean/BlockCount;

.field private broadcast:Lcom/codemao/creativestore/bean/BroadcastsVO;

.field private procedures:Lcom/codemao/creativestore/bean/ProceduresVO;

.field private project_name:Ljava/lang/String;

.field private scenes:Lcom/codemao/creativestore/bean/ScenesVO;

.field private split_options:Lcom/codemao/creativestore/bean/SplitOptionsVO;

.field private stage_size:Lcom/codemao/creativestore/bean/StageSize;

.field private styles:Lcom/codemao/creativestore/bean/StylesVO;

.field private toolbox:Lcom/codemao/creativestore/bean/ToolboxV0;

.field private variable:Lcom/codemao/creativestore/bean/VariablesVO;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/creativestore/bean/BcmVO;
    .registers 4

    .line 135
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/BcmVO;

    return-object v0
.end method

.method public getActors()Lcom/codemao/creativestore/bean/ActorsVO;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->actors:Lcom/codemao/creativestore/bean/ActorsVO;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method public getAudios()Lcom/codemao/creativestore/bean/SoundsVO;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->audios:Lcom/codemao/creativestore/bean/SoundsVO;

    return-object v0
.end method

.method public getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->block_count:Lcom/codemao/creativestore/bean/BlockCount;

    return-object v0
.end method

.method public getBroadcast()Lcom/codemao/creativestore/bean/BroadcastsVO;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->broadcast:Lcom/codemao/creativestore/bean/BroadcastsVO;

    return-object v0
.end method

.method public getProcedures()Lcom/codemao/creativestore/bean/ProceduresVO;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->procedures:Lcom/codemao/creativestore/bean/ProceduresVO;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Lcom/codemao/creativestore/bean/ProceduresVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/ProceduresVO;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->procedures:Lcom/codemao/creativestore/bean/ProceduresVO;

    .line 117
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->procedures:Lcom/codemao/creativestore/bean/ProceduresVO;

    return-object v0
.end method

.method public getProject_name()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->project_name:Ljava/lang/String;

    return-object v0
.end method

.method public getScenes()Lcom/codemao/creativestore/bean/ScenesVO;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->scenes:Lcom/codemao/creativestore/bean/ScenesVO;

    return-object v0
.end method

.method public getSplit_options()Lcom/codemao/creativestore/bean/SplitOptionsVO;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->split_options:Lcom/codemao/creativestore/bean/SplitOptionsVO;

    if-nez v0, :cond_b

    .line 126
    new-instance v0, Lcom/codemao/creativestore/bean/SplitOptionsVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/SplitOptionsVO;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->split_options:Lcom/codemao/creativestore/bean/SplitOptionsVO;

    .line 127
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->split_options:Lcom/codemao/creativestore/bean/SplitOptionsVO;

    return-object v0
.end method

.method public getStageSize()Lcom/codemao/creativestore/bean/StageSize;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->stage_size:Lcom/codemao/creativestore/bean/StageSize;

    return-object v0
.end method

.method public getStage_size()Lcom/codemao/creativestore/bean/StageSize;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->stage_size:Lcom/codemao/creativestore/bean/StageSize;

    return-object v0
.end method

.method public getStyles()Lcom/codemao/creativestore/bean/StylesVO;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->styles:Lcom/codemao/creativestore/bean/StylesVO;

    return-object v0
.end method

.method public getToolbox()Lcom/codemao/creativestore/bean/ToolboxV0;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->toolbox:Lcom/codemao/creativestore/bean/ToolboxV0;

    return-object v0
.end method

.method public getVariable()Lcom/codemao/creativestore/bean/VariablesVO;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BcmVO;->variable:Lcom/codemao/creativestore/bean/VariablesVO;

    return-object v0
.end method

.method public isLandscape()Z
    .registers 7

    .line 147
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/BcmVO;->getStageSize()Lcom/codemao/creativestore/bean/StageSize;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 148
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/BcmVO;->getStageSize()Lcom/codemao/creativestore/bean/StageSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StageSize;->getWidth()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/BcmVO;->getStageSize()Lcom/codemao/creativestore/bean/StageSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StageSize;->getHeight()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public isMicroBit()Z
    .registers 5

    .line 154
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/BcmVO;->getToolbox()Lcom/codemao/creativestore/bean/ToolboxV0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 158
    :cond_8
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ToolboxV0;->getDevice()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 162
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "microbit"

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_29
    return v1
.end method

.method public setActors(Lcom/codemao/creativestore/bean/ActorsVO;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->actors:Lcom/codemao/creativestore/bean/ActorsVO;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setAudios(Lcom/codemao/creativestore/bean/SoundsVO;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->audios:Lcom/codemao/creativestore/bean/SoundsVO;

    return-void
.end method

.method public setBlock_count(Lcom/codemao/creativestore/bean/BlockCount;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->block_count:Lcom/codemao/creativestore/bean/BlockCount;

    return-void
.end method

.method public setBroadcast(Lcom/codemao/creativestore/bean/BroadcastsVO;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->broadcast:Lcom/codemao/creativestore/bean/BroadcastsVO;

    return-void
.end method

.method public setProcedures(Lcom/codemao/creativestore/bean/ProceduresVO;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->procedures:Lcom/codemao/creativestore/bean/ProceduresVO;

    return-void
.end method

.method public setProject_name(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->project_name:Ljava/lang/String;

    return-void
.end method

.method public setScenes(Lcom/codemao/creativestore/bean/ScenesVO;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->scenes:Lcom/codemao/creativestore/bean/ScenesVO;

    return-void
.end method

.method public setSplit_options(Lcom/codemao/creativestore/bean/SplitOptionsVO;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->split_options:Lcom/codemao/creativestore/bean/SplitOptionsVO;

    return-void
.end method

.method public setStage_size(Lcom/codemao/creativestore/bean/StageSize;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->stage_size:Lcom/codemao/creativestore/bean/StageSize;

    return-void
.end method

.method public setStyles(Lcom/codemao/creativestore/bean/StylesVO;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->styles:Lcom/codemao/creativestore/bean/StylesVO;

    return-void
.end method

.method public setToolbox(Lcom/codemao/creativestore/bean/ToolboxV0;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->toolbox:Lcom/codemao/creativestore/bean/ToolboxV0;

    return-void
.end method

.method public setVariable(Lcom/codemao/creativestore/bean/VariablesVO;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BcmVO;->variable:Lcom/codemao/creativestore/bean/VariablesVO;

    return-void
.end method

.method public toStringWithIgnore()Ljava/lang/String;
    .registers 3

    .line 139
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
