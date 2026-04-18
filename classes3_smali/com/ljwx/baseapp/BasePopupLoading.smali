.class public Lcom/ljwx/baseapp/BasePopupLoading;
.super Ljava/lang/Object;
.source "BasePopupLoading.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/baseapp/BasePopupLoading$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasePopupLoading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasePopupLoading.kt\ncom/ljwx/baseapp/BasePopupLoading\n+ 2 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n*L\n1#1,93:1\n6#2,2:94\n*S KotlinDebug\n*F\n+ 1 BasePopupLoading.kt\ncom/ljwx/baseapp/BasePopupLoading\n*L\n73#1:94,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/ljwx/baseapp/BasePopupLoading$Companion;

.field private static loadingLayout:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final dialog$delegate:Lkotlin/Lazy;

.field private mLoadingLayout:Ljava/lang/Integer;

.field private mTips:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ljwx/baseapp/BasePopupLoading$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ljwx/baseapp/BasePopupLoading$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ljwx/baseapp/BasePopupLoading;->Companion:Lcom/ljwx/baseapp/BasePopupLoading$Companion;

    .line 15
    sget v0, Lcom/ljwx/baseapp/R$layout;->baseapp_popup_loading_layout:I

    sput v0, Lcom/ljwx/baseapp/BasePopupLoading;->loadingLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ljwx/baseapp/BasePopupLoading;->context:Landroid/content/Context;

    .line 25
    new-instance p1, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;

    invoke-direct {p1, p0}, Lcom/ljwx/baseapp/BasePopupLoading$dialog$2;-><init>(Lcom/ljwx/baseapp/BasePopupLoading;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseapp/BasePopupLoading;->dialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/ljwx/baseapp/BasePopupLoading;)Landroid/content/Context;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ljwx/baseapp/BasePopupLoading;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLoadingLayout$cp()I
    .registers 1

    .line 11
    sget v0, Lcom/ljwx/baseapp/BasePopupLoading;->loadingLayout:I

    return v0
.end method

.method public static final synthetic access$getMLoadingLayout$p(Lcom/ljwx/baseapp/BasePopupLoading;)Ljava/lang/Integer;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ljwx/baseapp/BasePopupLoading;->mLoadingLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$setLoadingLayout$cp(I)V
    .registers 1

    .line 11
    sput p0, Lcom/ljwx/baseapp/BasePopupLoading;->loadingLayout:I

    return-void
.end method

.method public static final synthetic access$setMTips$p(Lcom/ljwx/baseapp/BasePopupLoading;Landroid/widget/TextView;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ljwx/baseapp/BasePopupLoading;->mTips:Landroid/widget/TextView;

    return-void
.end method

.method private final getDialog()Landroidx/appcompat/app/AlertDialog;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/ljwx/baseapp/BasePopupLoading;->dialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic showPopup$default(Lcom/ljwx/baseapp/BasePopupLoading;ZZLjava/lang/CharSequence;ZZZILjava/lang/Object;)V
    .registers 15

    if-nez p8, :cond_30

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, p2

    :goto_a
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    :cond_10
    move-object v2, p3

    :goto_11
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    move v1, p4

    :goto_17
    and-int/lit8 v3, p7, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    move v3, p5

    :goto_1f
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_24

    goto :goto_25

    :cond_24
    move v4, p6

    :goto_25
    move-object p2, p0

    move p3, p1

    move p4, v0

    move-object p5, v2

    move p6, v1

    move p7, v3

    move p8, v4

    .line 47
    invoke-virtual/range {p2 .. p8}, Lcom/ljwx/baseapp/BasePopupLoading;->showPopup(ZZLjava/lang/CharSequence;ZZZ)V

    return-void

    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showPopup"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final dismiss()V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 87
    :cond_b
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final isShowing()Z
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final showPopup(ZZLjava/lang/CharSequence;ZZZ)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 59
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p3, :cond_1a

    .line 61
    iget-object p1, p0, Lcom/ljwx/baseapp/BasePopupLoading;->mTips:Landroid/widget/TextView;

    if-eqz p1, :cond_1a

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1a
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 64
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    if-nez p1, :cond_34

    goto :goto_3d

    :cond_34
    if-eqz p6, :cond_38

    const/4 p2, 0x0

    goto :goto_3b

    :cond_38
    const p2, 0x3ecccccd  # 0.4f

    .line 67
    :goto_3b
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 69
    :goto_3d
    invoke-direct {p0}, Lcom/ljwx/baseapp/BasePopupLoading;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-nez p2, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4b
    return-void
.end method
