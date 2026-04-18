.class Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$2;
.super Ljava/lang/Object;
.source "UserLevelDetailPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 73
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goLevelDes(Landroid/content/Context;)V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
