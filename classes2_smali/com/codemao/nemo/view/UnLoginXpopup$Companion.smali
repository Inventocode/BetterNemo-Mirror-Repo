.class public final Lcom/codemao/nemo/view/UnLoginXpopup$Companion;
.super Ljava/lang/Object;
.source "UnLoginXpopup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/UnLoginXpopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$-n_emlUq7NwPE3UMpzyTfAWGjV0(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginForCommentTipsDialog$lambda$2(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6n1-zias4h1pqyBdC8XIuzI8kMI(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginForCommentTipsDialog$lambda$3(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9FQE4kDcuZlLvlcoMmagTITosuc(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginForRecordHobbiesTipsDialog$lambda$0(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUg4pkjX5CavPkPzPPlHUotdUIA(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginDialogForReWorkTipsDialog$lambda$5(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-0-R4PpK2_u4HcM-e_DhtvCgkA(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginDialogForReWorkTipsDialog$lambda$4(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPx8p7RcQ0R6rJ-aRluf5gqgPVI(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->showUnLoginForRecordHobbiesTipsDialog$lambda$1(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;-><init>()V

    return-void
.end method

.method private static final showUnLoginDialogForReWorkTipsDialog$lambda$4(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 16

    const-string p3, "$action"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$unLoginXpopup"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "前往"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 90
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "登录"

    const-string v8, "再逛逛"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    invoke-virtual {p2}, Lcom/codemao/nemo/view/UnLoginXpopup;->dismiss()V

    return-void
.end method

.method private static final showUnLoginDialogForReWorkTipsDialog$lambda$5(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 5

    const-string p4, "$action"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$unLoginXpopup"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x3

    .line 95
    invoke-static {p2, p0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {p3}, Lcom/codemao/nemo/view/UnLoginXpopup;->dismiss()V

    return-void
.end method

.method private static final showUnLoginForCommentTipsDialog$lambda$2(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 6

    const-string p5, "$action"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$unLoginXpopup"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_f

    .line 63
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 65
    :cond_f
    invoke-static {p1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x3

    .line 66
    invoke-static {p3, p0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    .line 67
    invoke-virtual {p4}, Lcom/codemao/nemo/view/UnLoginXpopup;->dismiss()V

    return-void
.end method

.method private static final showUnLoginForCommentTipsDialog$lambda$3(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 19

    const-string v0, "$action"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$unLoginXpopup"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_12

    .line 72
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_12
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "前往"

    const-string v3, ""

    move-object v1, p1

    .line 74
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "登录"

    const-string v10, "再逛逛"

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/codemao/nemo/view/UnLoginXpopup;->dismiss()V

    return-void
.end method

.method private static final showUnLoginForRecordHobbiesTipsDialog$lambda$0(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 16

    const-string p3, "$action"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$unLoginXpopup"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "前往"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 40
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "登录"

    const-string v8, "再逛逛"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    invoke-virtual {p2}, Lcom/codemao/nemo/view/UnLoginXpopup;->dismiss()V

    return-void
.end method

.method private static final showUnLoginForRecordHobbiesTipsDialog$lambda$1(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;Landroid/view/View;)V
    .registers 5

    const-string p4, "$action"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$unLoginXpopup"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x3

    .line 45
    invoke-static {p2, p0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    .line 46
    invoke-virtual {p3}, Lcom/codemao/nemo/view/UnLoginXpopup;->dismiss()V

    return-void
.end method


# virtual methods
.method public final show(Lcom/codemao/nemo/view/UnLoginXpopup;)V
    .registers 4

    const-string v0, "unLoginXpopup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 19
    :cond_c
    new-instance v1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 20
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->getContentStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->getLeftButtonStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->getRightButtonStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->getLeftButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->getRightButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/UnLoginXpopup;->setInsideDialogInstance(Landroid/app/Dialog;)V

    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showUnLoginDialogForReWorkTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 85
    :cond_8
    new-instance v0, Lcom/codemao/nemo/view/UnLoginXpopup;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;-><init>(Landroid/content/Context;)V

    const-string v1, "前往登录"

    .line 86
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setRightButtonStr(Ljava/lang/String;)V

    const-string v1, "放弃"

    .line 87
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setLeftButtonStr(Ljava/lang/String;)V

    const-string v1, "登录后\n才可查看作品制作原理"

    .line 88
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setContentStr(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v1, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p1, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->show(Lcom/codemao/nemo/view/UnLoginXpopup;)V

    return-void
.end method

.method public final showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 57
    :cond_8
    new-instance v0, Lcom/codemao/nemo/view/UnLoginXpopup;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setContentStr(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setLeftButtonStr(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setRightButtonStr(Ljava/lang/String;)V

    .line 61
    new-instance v7, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;)V

    invoke-virtual {v0, v7}, Lcom/codemao/nemo/view/UnLoginXpopup;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, p2, p5, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;)V

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->show(Lcom/codemao/nemo/view/UnLoginXpopup;)V

    return-void
.end method

.method public final showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 35
    :cond_8
    new-instance v0, Lcom/codemao/nemo/view/UnLoginXpopup;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setRightButtonStr(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setLeftButtonStr(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setContentStr(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p3, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/codemao/nemo/view/UnLoginXpopup;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v1, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3, p1, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/codemao/nemo/view/UnLoginXpopup;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->setRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/UnLoginXpopup$Companion;->show(Lcom/codemao/nemo/view/UnLoginXpopup;)V

    return-void
.end method
