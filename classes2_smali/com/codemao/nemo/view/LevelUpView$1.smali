.class Lcom/codemao/nemo/view/LevelUpView$1;
.super Ljava/lang/Object;
.source "LevelUpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/LevelUpView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/LevelUpView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/LevelUpView;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/nemo/view/LevelUpView$1;->this$0:Lcom/codemao/nemo/view/LevelUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView$1;->this$0:Lcom/codemao/nemo/view/LevelUpView;

    iget v1, v0, Lcom/codemao/nemo/view/LevelUpView;->from:I

    const/4 v2, 0x0

    if-nez v1, :cond_f

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "点击去看看"

    .line 128
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3e

    :cond_f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 130
    iget-object v0, v0, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "签订协议页-点击继续"

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/view/LevelUpView$1;->this$0:Lcom/codemao/nemo/view/LevelUpView;

    iget-object v2, v2, Lcom/codemao/nemo/view/LevelUpView;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setButtonType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    :goto_3e
    iget-object v0, p0, Lcom/codemao/nemo/view/LevelUpView$1;->this$0:Lcom/codemao/nemo/view/LevelUpView;

    iget-object v0, v0, Lcom/codemao/nemo/view/LevelUpView;->confirmClickLitstener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_47

    .line 134
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_47
    return-void
.end method
