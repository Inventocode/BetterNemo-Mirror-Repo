.class public final Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;
.super Ljava/lang/Object;
.source "PermissionNoticeTools.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;


# direct methods
.method public static synthetic $r8$lambda$0zIHSTlujcwMu4iqQggm6EZcrL0(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->showNoticePop$lambda$4(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4_YetKwKen8JSB9W9kRsuvHdS7o(Landroid/app/Activity;[Ljava/lang/String;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin$lambda$2(Landroid/app/Activity;[Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4al9tlzr0sdCQNYtQivCZaIfK3s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VnxClx-92FSlrpLgzEIsBtF6Eno(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->showNoticePop$lambda$3(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fgenjpLlXGYGexowcRODfRCTHh8(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission$lambda$0(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    invoke-direct {v0}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;-><init>()V

    sput-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final checkPermissionInOrigin$lambda$2(Landroid/app/Activity;[Ljava/lang/String;IZ)V
    .registers 5

    const-string v0, "$permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_d

    .line 96
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method private static final checkPermissionWithRxpermission$lambda$0(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .registers 6

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p0, 0x1

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 60
    invoke-interface {p3}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_32

    .line 62
    :cond_2a
    new-instance p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$1$1;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_32
    return-void
.end method

.method private static final checkPermissionWithRxpermission$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final showNoticePop$lambda$3(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 3

    const-string p2, "$resultHandler"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 120
    invoke-interface {p0, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;->onResult(Z)V

    .line 121
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showNoticePop$lambda$4(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 3

    const-string p2, "$resultHandler"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 124
    invoke-interface {p0, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;->onResult(Z)V

    .line 125
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final varargs checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "permissions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p4, p2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V

    return-void
.end method

.method public final varargs checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p3, p2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda3;-><init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    .line 72
    new-instance v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;

    invoke-direct {v0, p1, p3}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$checkPermissionWithRxpermission$2;-><init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)V

    new-instance p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "context: FragmentActivit…\n            }\n\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNoticeStrId(Ljava/lang/String;)I
    .registers 4

    const v0, 0x7f120249

    if-eqz p1, :cond_54

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_56

    goto :goto_54

    :sswitch_d
    const-string v1, "TYPE_RECORDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_54

    :cond_16
    const v0, 0x7f12024a

    goto :goto_54

    :sswitch_1a
    const-string v1, "TYPE_SAVE_WORK_CARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_54

    :cond_23
    const v0, 0x7f12024c

    goto :goto_54

    :sswitch_27
    const-string v1, "TYPE_OPEN_CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_54

    :cond_30
    const v0, 0x7f120248

    goto :goto_54

    :sswitch_34
    const-string v1, "TYPE_SHARE_WORK_CARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_54

    :cond_3d
    const v0, 0x7f12024d

    goto :goto_54

    :sswitch_41
    const-string v1, "TYPE_SAVE_PHOTO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_54

    :cond_4a
    const v0, 0x7f12024b

    goto :goto_54

    :sswitch_4e
    const-string v1, "TYPE_OPEN_XIANGCE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_54
    :goto_54
    return v0

    nop

    :sswitch_data_56
    .sparse-switch
        -0x7ca790c5 -> :sswitch_4e
        -0x79ab890b -> :sswitch_41
        -0x3dc0b807 -> :sswitch_34
        -0x73e52cb -> :sswitch_27
        0x3e0536e1 -> :sswitch_1a
        0x536bc423 -> :sswitch_d
    .end sparse-switch
.end method

.method public final varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_12

    return v1

    .line 45
    :cond_12
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v0, :cond_23

    aget-object v4, p2, v3

    .line 46
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_20

    return v2

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_23
    return v1
.end method

.method public final showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V
    .registers 5

    const-string v0, "resultHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->getNoticeStrId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStrId(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string p2, "取消"

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string p2, "开启"

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 119
    new-instance p2, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 123
    new-instance p2, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
