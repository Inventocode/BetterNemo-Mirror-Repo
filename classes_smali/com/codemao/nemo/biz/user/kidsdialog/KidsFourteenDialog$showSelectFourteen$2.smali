.class final Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KidsFourteenDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showSelectFourteen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;->$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 73
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 3

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;->$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 75
    sget-object p1, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    iget-object v0, p0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->access$showParentAgree(Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;Landroid/content/Context;)V

    return-void
.end method
