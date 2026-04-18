.class public Lcom/codemao/creativecenter/dbfunc/BindAdapters;
.super Ljava/lang/Object;
.source "BindAdapters.java"


# direct methods
.method public static bindActor(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "(%d，%d) %d° %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bindDisplay(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_visible:I

    goto :goto_e

    :cond_c
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_unvisible:I

    :goto_e
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public static bindImgRes(Landroid/widget/ImageView;I)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 102
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static bindRotate(Landroid/widget/TextView;D)V
    .registers 3

    double-to-int p1, p1

    .line 35
    invoke-static {p1}, Lcom/codemao/creativestore/bean/RoleNumBean;->getRotateValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bindScale(Landroid/widget/TextView;D)V
    .registers 3

    double-to-int p1, p1

    .line 41
    invoke-static {p1}, Lcom/codemao/creativestore/bean/RoleNumBean;->getScaleValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bindSelect(Landroid/view/View;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 84
    :cond_3
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 69
    :cond_3
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public static bindSelect(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 77
    :cond_3
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    return-void
.end method

.method public static bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 93
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1a

    :cond_16
    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1a
    return-void
.end method

.method public static bindTranset(Landroid/widget/TextView;D)V
    .registers 3

    double-to-int p1, p1

    .line 47
    invoke-static {p1}, Lcom/codemao/creativestore/bean/RoleNumBean;->getTransetValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bindlock(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_locked:I

    goto :goto_e

    :cond_c
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_selector_icon_unlocked:I

    :goto_e
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
