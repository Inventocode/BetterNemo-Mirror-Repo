.class final Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePopupLoading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseapp/BasePopupLoading;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/appcompat/app/AlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseapp/BasePopupLoading;


# direct methods
.method constructor <init>(Lcom/ljwx/baseapp/BasePopupLoading;)V
    .registers 2

    iput-object p1, p0, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;->this$0:Lcom/ljwx/baseapp/BasePopupLoading;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/appcompat/app/AlertDialog;
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;->this$0:Lcom/ljwx/baseapp/BasePopupLoading;

    invoke-static {v0}, Lcom/ljwx/baseapp/BasePopupLoading;->access$getContext$p(Lcom/ljwx/baseapp/BasePopupLoading;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;->this$0:Lcom/ljwx/baseapp/BasePopupLoading;

    invoke-static {v1}, Lcom/ljwx/baseapp/BasePopupLoading;->access$getMLoadingLayout$p(Lcom/ljwx/baseapp/BasePopupLoading;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1b

    :cond_17
    invoke-static {}, Lcom/ljwx/baseapp/BasePopupLoading;->access$getLoadingLayout$cp()I

    move-result v1

    :goto_1b
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;->this$0:Lcom/ljwx/baseapp/BasePopupLoading;

    sget v2, Lcom/ljwx/baseapp/R$id;->base_pop_loading_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ljwx/baseapp/BasePopupLoading;->access$setMTips$p(Lcom/ljwx/baseapp/BasePopupLoading;Landroid/widget/TextView;)V

    .line 28
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;->this$0:Lcom/ljwx/baseapp/BasePopupLoading;

    invoke-static {v2}, Lcom/ljwx/baseapp/BasePopupLoading;->access$getContext$p(Lcom/ljwx/baseapp/BasePopupLoading;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/ljwx/baseapp/R$style;->dialogNoBg:I

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "Builder(context, R.style…g).setView(view).create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;->invoke()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
