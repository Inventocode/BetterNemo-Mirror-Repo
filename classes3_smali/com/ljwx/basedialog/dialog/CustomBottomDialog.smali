.class public Lcom/ljwx/basedialog/dialog/CustomBottomDialog;
.super Lcom/ljwx/basedialog/dialog/CustomDialog;
.source "CustomBottomDialog.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/ljwx/basedialog/dialog/CustomBottomDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/ljwx/basedialog/dialog/CustomDialog;-><init>(Landroid/content/Context;I)V

    const/high16 p1, 0x3f800000  # 1.0f

    const/4 p2, 0x0

    .line 15
    invoke-static {p1, p2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->translate(FF)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->translate(FF)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/ljwx/basedialog/dialog/CustomDialog;

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_22

    if-eqz p3, :cond_1c

    const/4 p3, 0x7

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x1

    :goto_1d
    or-int/lit8 p3, p3, 0x50

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 17
    :cond_22
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    const/4 p3, -0x2

    const/4 v0, -0x1

    if-nez p1, :cond_33

    goto :goto_3b

    :cond_33
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v0, p3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :goto_3b
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_44

    invoke-virtual {p1, v0, p3}, Landroid/view/Window;->setLayout(II)V

    .line 21
    :cond_44
    invoke-virtual {p0, p2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
