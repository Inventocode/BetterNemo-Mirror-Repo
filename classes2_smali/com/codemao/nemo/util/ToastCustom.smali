.class public final Lcom/codemao/nemo/util/ToastCustom;
.super Ljava/lang/Object;
.source "ToastCustom.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/ToastCustom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/ToastCustom;

    invoke-direct {v0}, Lcom/codemao/nemo/util/ToastCustom;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final showShort(Ljava/lang/CharSequence;I)V
    .registers 3

    if-eqz p0, :cond_13

    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    .line 33
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_13
    return-void
.end method

.method public static synthetic showShort$default(Ljava/lang/CharSequence;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 29
    :cond_5
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastCustom;->showShort(Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public final showTop(ILjava/lang/CharSequence;)V
    .registers 5

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 23
    invoke-static {p2, p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showShort$default(Ljava/lang/CharSequence;IILjava/lang/Object;)V

    :cond_8
    return-void
.end method
