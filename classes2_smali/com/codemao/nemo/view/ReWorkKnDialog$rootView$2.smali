.class final Lcom/codemao/nemo/view/ReWorkKnDialog$rootView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReWorkKnDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ReWorkKnDialog;-><init>(Landroid/content/Context;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Lcom/ljwx/baseapp/callback/CallbackType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkKnDialog$rootView$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkKnDialog$rootView$2;->$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/codemao/nemo/view/ReWorkKnDialog$rootView$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
