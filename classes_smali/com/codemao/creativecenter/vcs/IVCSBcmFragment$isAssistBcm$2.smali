.class final Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistBcm$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistBcm$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistBcm$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$isAssistBcm$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string v2, "EXTRA_IS_ASSIST_BCM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_f
    return v1
.end method
