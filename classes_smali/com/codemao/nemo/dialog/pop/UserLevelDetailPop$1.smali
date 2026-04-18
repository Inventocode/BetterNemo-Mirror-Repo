.class Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$1;
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

    .line 62
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 65
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
