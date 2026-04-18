.class public final Lcom/ljwx/baseapp/page/IPageDialogTips$DefaultImpls;
.super Ljava/lang/Object;
.source "IPageDialogTips.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/page/IPageDialogTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic showDialogTips$default(Lcom/ljwx/baseapp/page/IPageDialogTips;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Landroid/app/Dialog;
    .registers 13

    if-nez p11, :cond_35

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_12

    move-object p3, v0

    :cond_12
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_17

    move-object p4, v0

    :cond_17
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1c

    move-object p5, v0

    :cond_1c
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_21

    move-object p6, v0

    :cond_21
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_26

    const/4 p7, 0x0

    :cond_26
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_2b

    move-object p8, v0

    :cond_2b
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_30

    move-object p9, v0

    .line 14
    :cond_30
    invoke-interface/range {p0 .. p9}, Lcom/ljwx/baseapp/page/IPageDialogTips;->showDialogTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_35
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showDialogTips"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
