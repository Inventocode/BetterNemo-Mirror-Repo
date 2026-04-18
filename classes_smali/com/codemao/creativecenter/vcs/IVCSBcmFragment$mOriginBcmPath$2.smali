.class final Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IVCSBcmFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistor()Z

    move-result v0

    if-nez v0, :cond_23

    .line 68
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mOriginBcmPath$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v2, "EXTRA_ORIGIN_BCM_PATH"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    :cond_23
    return-object v1
.end method
