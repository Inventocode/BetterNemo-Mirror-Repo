.class Lcom/codemao/nemo/dialog/pop/UserLevelupPop$2;
.super Ljava/lang/Object;
.source "UserLevelupPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
