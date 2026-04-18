.class public final Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;
.super Ljava/lang/Object;
.source "KidsFourteenDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKidsFourteenDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KidsFourteenDialog.kt\ncom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,94:1\n15#2,7:95\n15#2,7:102\n*S KotlinDebug\n*F\n+ 1 KidsFourteenDialog.kt\ncom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog\n*L\n73#1:95,7\n87#1:102,7\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

.field private static final TYPE_AGREE:Ljava/lang/String;

.field private static final TYPE_SELECT:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$FqOKlMTIDr-nOzJhSZaHXhsWOBo(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showSelectFourteen$lambda$0(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h2TVHZ4YZm7dkJrORgIuFDRKlH0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showParentAgree$lambda$1(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    const-string v0, "select"

    .line 15
    sput-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->TYPE_SELECT:Ljava/lang/String;

    const-string v0, "agree"

    .line 16
    sput-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->TYPE_AGREE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$showParentAgree(Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showParentAgree(Landroid/content/Context;)V

    return-void
.end method

.method private final cacheAgree()V
    .registers 4

    .line 57
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "kidsFourteenAgree"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method private final getDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/Dialog;
    .registers 5

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f13035b

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const-string p2, "dialog"

    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getView(Landroid/content/Context;Ljava/lang/String;)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;
    .registers 5

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;

    move-result-object p1

    const-string v0, "inflate(\n            Lay…          false\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->TYPE_SELECT:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 28
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsIcon:Landroid/widget/ImageView;

    const v0, 0x7f0e010e

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsTitle:Landroid/widget/TextView;

    const-string/jumbo v0, "未成年人个人信息保护"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsContent:Landroid/widget/TextView;

    const-string/jumbo v0, "未成年人个人信息保护是我们工作的重中之重。为了给您提供更优质的个人信息保护服务，需要您确认是否已满 14 周岁"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->forbid:Landroid/widget/TextView;

    const-string/jumbo v0, "未满14周岁"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->sure:Landroid/widget/TextView;

    const-string/jumbo v0, "已满14周岁"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_70

    .line 36
    :cond_40
    sget-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->TYPE_AGREE:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 37
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsIcon:Landroid/widget/ImageView;

    const v0, 0x7f0e010d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsTitle:Landroid/widget/TextView;

    const-string/jumbo v0, "获取监护人同意"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsContent:Landroid/widget/TextView;

    const-string/jumbo v0, "因您未满 14 周岁，为了更好地保障您的合法权益，请在使用 APP 功能前，务必先获得监护人的同意。"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->forbid:Landroid/widget/TextView;

    const-string/jumbo v0, "退出 App"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p2, p1, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->sure:Landroid/widget/TextView;

    const-string/jumbo v0, "监护人同意"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_70
    :goto_70
    return-object p1
.end method

.method private final showParentAgree(Landroid/content/Context;)V
    .registers 8

    .line 81
    sget-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->TYPE_AGREE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->getView(Landroid/content/Context;Ljava/lang/String;)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->getDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object p1

    .line 83
    iget-object v1, v0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->sure:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, v0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->forbid:Landroid/widget/TextView;

    const-string v1, "binding.forbid"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showParentAgree$2;

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showParentAgree$lambda$1(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    const-string p1, "$dialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    invoke-direct {p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->cacheAgree()V

    .line 85
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showSelectFourteen$lambda$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    const-string p1, "$dialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object p1, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    invoke-direct {p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->cacheAgree()V

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final showSelectFourteen(Landroid/content/Context;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "kidsFourteenAgree"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 67
    :cond_12
    sget-object v0, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->TYPE_SELECT:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->getView(Landroid/content/Context;Ljava/lang/String;)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->getDialog(Landroid/content/Context;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    .line 69
    iget-object v2, v0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->sure:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, v0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->forbid:Landroid/widget/TextView;

    const-string v2, "binding.forbid"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;

    invoke-direct {v2, v1, p1}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog$showSelectFourteen$2;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    const/4 p1, 0x0

    .line 20
    new-instance v5, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v5, v3, v4, p1, v2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
