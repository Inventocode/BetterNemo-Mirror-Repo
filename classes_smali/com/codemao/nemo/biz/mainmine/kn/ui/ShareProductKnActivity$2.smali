.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$2;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->onIlleagalCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method
