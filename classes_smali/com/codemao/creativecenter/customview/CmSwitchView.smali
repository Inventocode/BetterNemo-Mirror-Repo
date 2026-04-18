.class public Lcom/codemao/creativecenter/customview/CmSwitchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;
    }
.end annotation


# instance fields
.field currentStatus:I

.field public hasVideo:Z

.field private isRun:Z

.field private iv_bg:Landroid/widget/ImageView;

.field private iv_bottom:Landroid/widget/ImageView;

.field private iv_top:Landroid/widget/ImageView;

.field private iv_video:Landroid/widget/ImageView;

.field private onStatusChange:Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 31
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->hasVideo:Z

    .line 35
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->isRun:Z

    .line 50
    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_view_cm_switch:I

    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_bg:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bg:Landroid/widget/ImageView;

    .line 53
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_video:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    .line 54
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_top:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_top:Landroid/widget/ImageView;

    .line 55
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_bottom:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bottom:Landroid/widget/ImageView;

    .line 57
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_top:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bottom:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(Z)V

    return-void
.end method

.method private animBG(I)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    cmpl-float v1, v0, p1

    if-nez v1, :cond_14

    return-void

    :cond_14
    sub-float/2addr p1, v0

    .line 173
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bg:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 175
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private changeStatus(Z)V
    .registers 6

    .line 146
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 147
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_top:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-ne v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 148
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bottom:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-nez v0, :cond_22

    const/4 v2, 0x1

    :cond_22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 149
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-eqz p1, :cond_42

    if-eq p1, v3, :cond_38

    if-eq p1, v1, :cond_2e

    goto :goto_4b

    .line 151
    :cond_2e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->animBG(I)V

    goto :goto_4b

    .line 155
    :cond_38
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_top:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->animBG(I)V

    goto :goto_4b

    .line 158
    :cond_42
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bottom:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->animBG(I)V

    .line 162
    :goto_4b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->onStatusChange:Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;

    if-eqz p1, :cond_54

    .line 163
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;->onChange(I)V

    :cond_54
    return-void
.end method


# virtual methods
.method public changeStatus(I)V
    .registers 6

    .line 198
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 199
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 200
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_top:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-ne v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 201
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bottom:Landroid/widget/ImageView;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-nez v0, :cond_22

    const/4 v2, 0x1

    :cond_22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 202
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-eqz p1, :cond_42

    if-eq p1, v3, :cond_38

    if-eq p1, v1, :cond_2e

    goto :goto_4b

    .line 204
    :cond_2e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->animBG(I)V

    goto :goto_4b

    .line 207
    :cond_38
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_top:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->animBG(I)V

    goto :goto_4b

    .line 210
    :cond_42
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_bottom:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->animBG(I)V

    :goto_4b
    return-void
.end method

.method public hasVideo()V
    .registers 3

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->hasVideo:Z

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->iv_video:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isHasVideo()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->hasVideo:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 66
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 70
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->isRun:Z

    const-string/jumbo v2, "运行"

    const-string/jumbo v3, "舞台编辑-横屏"

    const-string/jumbo v4, "运行状态"

    const-string/jumbo v5, "舞台"

    if-eqz v1, :cond_15

    move-object v6, v2

    move-object v1, v4

    goto :goto_17

    :cond_15
    move-object v1, v3

    move-object v6, v5

    .line 74
    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 75
    sget v7, Lcom/codemao/creativecenter/R$id;->iv_video:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne p1, v7, :cond_34

    .line 76
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-eq p1, v8, :cond_63

    .line 77
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->onStatusChange:Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;

    invoke-interface {p1}, Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;->checkCanClickVideo()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 78
    iput v8, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 79
    invoke-direct {p0, v10}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(Z)V

    return-void

    .line 83
    :cond_34
    sget v7, Lcom/codemao/creativecenter/R$id;->iv_top:I

    if-ne p1, v7, :cond_4c

    .line 84
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-eq p1, v9, :cond_42

    .line 85
    iput v9, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 86
    invoke-direct {p0, v10}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(Z)V

    goto :goto_63

    .line 89
    :cond_42
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->hasVideo:Z

    if-nez p1, :cond_63

    .line 90
    iput v10, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 91
    invoke-direct {p0, v10}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(Z)V

    goto :goto_63

    .line 94
    :cond_4c
    sget v7, Lcom/codemao/creativecenter/R$id;->iv_bottom:I

    if-ne p1, v7, :cond_63

    .line 95
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-eqz p1, :cond_5a

    .line 96
    iput v10, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 97
    invoke-direct {p0, v10}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(Z)V

    goto :goto_63

    .line 99
    :cond_5a
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->hasVideo:Z

    if-nez p1, :cond_63

    .line 100
    iput v9, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    .line 101
    invoke-direct {p0, v10}, Lcom/codemao/creativecenter/customview/CmSwitchView;->changeStatus(Z)V

    .line 106
    :cond_63
    :goto_63
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v7, "视频"

    const-string/jumbo v10, "积木"

    if-nez p1, :cond_8b

    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    if-eq v0, p1, :cond_8b

    const/4 p1, -0x1

    if-eq v0, p1, :cond_89

    if-eqz v0, :cond_87

    if-eq v0, v9, :cond_82

    if-eq v0, v8, :cond_7d

    goto :goto_8b

    :cond_7d
    const-string/jumbo v3, "视屏播放"

    move-object v2, v7

    goto :goto_8d

    :cond_82
    const-string/jumbo v3, "积木编辑"

    move-object v2, v10

    goto :goto_8d

    :cond_87
    move-object v2, v5

    goto :goto_8d

    :cond_89
    move-object v3, v4

    goto :goto_8d

    :cond_8b
    :goto_8b
    move-object v3, v1

    move-object v2, v6

    .line 126
    :goto_8d
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->currentStatus:I

    const-string v0, "-切换区域"

    if-ne p1, v9, :cond_b6

    .line 127
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setSpace(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_ff

    :cond_b6
    if-nez p1, :cond_db

    .line 129
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setSpace(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_ff

    :cond_db
    if-ne p1, v8, :cond_ff

    .line 131
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setSpace(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_ff
    :goto_ff
    return-void
.end method

.method public setRun(Z)V
    .registers 2

    .line 217
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->isRun:Z

    return-void
.end method

.method public setStatusChangeListener(Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSwitchView;->onStatusChange:Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;

    return-void
.end method

.method public setWorkId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
