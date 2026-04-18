.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typePublished$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;-><init>()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typePublished$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typePublished$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "published"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$typePublished$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
