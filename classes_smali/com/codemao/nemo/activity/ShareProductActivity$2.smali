.class Lcom/codemao/nemo/activity/ShareProductActivity$2;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->onIlleagalCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ShareProductActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$2;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 218
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$2;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->finish()V

    return-void
.end method
