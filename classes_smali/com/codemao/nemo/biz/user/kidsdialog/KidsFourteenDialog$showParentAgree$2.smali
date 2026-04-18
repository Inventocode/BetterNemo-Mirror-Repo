.class final Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KidsFourteenDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showParentAgree(Landroid/content/Context;)V
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


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 87
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 3

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
