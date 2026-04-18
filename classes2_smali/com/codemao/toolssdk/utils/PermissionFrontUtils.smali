.class public final Lcom/codemao/toolssdk/utils/PermissionFrontUtils;
.super Ljava/lang/Object;
.source "PermissionFrontUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionFrontUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionFrontUtils.kt\ncom/codemao/toolssdk/utils/PermissionFrontUtils\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,309:1\n441#2:310\n441#2:311\n*S KotlinDebug\n*F\n+ 1 PermissionFrontUtils.kt\ncom/codemao/toolssdk/utils/PermissionFrontUtils\n*L\n109#1:310\n160#1:311\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

.field private static final PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

.field private static final PERMISSION_TYPE_CAMERA:Ljava/lang/String;

.field private static final PERMISSION_TYPE_IMAGES:Ljava/lang/String;

.field private static final PERMISSION_TYPE_LOCATION:Ljava/lang/String;

.field private static final PERMISSION_TYPE_RECORD:Ljava/lang/String;

.field private static locationDialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$5erz9OKHljfoavvODOtr_Fm4spQ(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getKnView$lambda$2(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GxsPhci2jw96oQxtOVOlHvNC92M(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getKnView$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KqX6zsFiHP8m7A9Hz4KXjm2KpRw(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getRokiView$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M3mFEDXxPCBMUc2zLfbnfxQtag8(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getWoodView$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5wDY0MeU4VRmlCXlIfISwDUcFQ(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getSystemDialog$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzc1tO3QmtEFy93pYz5UqaZUYWE(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getRokiView$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fPRrZ-FC3dY8aJ-eb52gbFG-z_Y(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getSystemDialog$lambda$6(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_uX5VZTO1RCbGg0v5tiJ20pHjY(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getWoodView$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    const-string v0, "images"

    .line 17
    sput-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    const-string v0, "record"

    .line 18
    sput-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    const-string v0, "camera"

    .line 19
    sput-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    const-string v0, "bluetooth"

    .line 20
    sput-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    const-string v0, "location"

    .line 21
    sput-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkRoki(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 247
    invoke-direct {p0, p1, p3, p4}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getRokiView(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;

    move-result-object p2

    goto :goto_24

    .line 250
    :cond_d
    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 251
    invoke-direct {p0, p1, p3, p4}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getKnView(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;

    move-result-object p2

    goto :goto_24

    .line 254
    :cond_18
    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkWood(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 255
    invoke-direct {p0, p1, p3, p4}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getWoodView(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;

    move-result-object p2

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    :goto_24
    if-nez p2, :cond_2b

    .line 261
    invoke-virtual {p0, p1, p3, p4}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getSystemDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 263
    :cond_2b
    new-instance p3, Landroid/app/Dialog;

    sget p4, Lcom/codemao/toolssdk/R$style;->toolsdk_TransparentAlertDialog:I

    invoke-direct {p3, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 265
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object p3
.end method

.method private final getKnView(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;

    move-result-object v0

    const-string v1, "inflate(\n            Lay…          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 89
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_image_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 92
    :cond_1f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 93
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_record_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 96
    :cond_2f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 97
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_camera_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 100
    :cond_3f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 101
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_ble_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 104
    :cond_4f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 105
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_location_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :cond_5e
    :goto_5e
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_permission_front_button_kn_forbid:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    const-string v2, "#808080"

    .line 441
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->sure:Landroid/widget/TextView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_permission_front_button_kn_sure:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 111
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getNewTips(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->sure:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, p3, p2, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final getKnView$lambda$2(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .registers 2

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getKnView$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const-string p3, "$result"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$permission"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    const-string p1, "权限未开启，部分功能可能无法使用"

    .line 118
    invoke-static {p2, p1, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_22
    return-void
.end method

.method private final getNewTips(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 181
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "需要开启相册权限\n才能上传/保存图片哦"

    goto :goto_39

    .line 182
    :cond_b
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "需要开启麦克风权限\n才能使用录音或语音识别功能哦"

    goto :goto_39

    .line 183
    :cond_16
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p1, "需要开启定位权限\n才能连接蓝牙哦"

    goto :goto_39

    .line 184
    :cond_21
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "需要开启相机权限\n才能进行拍照哦"

    goto :goto_39

    .line 185
    :cond_2c
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "需要开启蓝牙权限\n才能连接其他设备哦"

    goto :goto_39

    :cond_37
    const-string p1, ""

    :goto_39
    return-object p1
.end method

.method private final getRokiView(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;

    move-result-object v0

    const-string v1, "inflate(\n            Lay…          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 37
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_images:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsText:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_images2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_81

    .line 41
    :cond_26
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 42
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_record:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsText:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_record2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_81

    .line 46
    :cond_3d
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 47
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_camera:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsText:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_camera2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_81

    .line 51
    :cond_54
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 52
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_bluetooth:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsText:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_bluetooth2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_81

    .line 56
    :cond_6b
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 57
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_location:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->tipsText:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_location2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :cond_81
    :goto_81
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->sure:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsBinding;->forbid:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3, p2, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final getRokiView$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .registers 2

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getRokiView$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const-string p3, "$result"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$permission"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    const-string p1, "权限未开启，部分功能可能无法使用"

    .line 67
    invoke-static {p2, p1, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_22
    return-void
.end method

.method private static final getSystemDialog$lambda$6(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p2, "$result"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final getSystemDialog$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .registers 5

    const-string p4, "$result"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$permission"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$context"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    const-string p1, "权限未开启，部分功能可能无法使用"

    .line 228
    invoke-static {p2, p1, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 234
    :cond_22
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private final getTips(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 192
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "需要开启相册权限，才能上传/保存图片哦"

    goto :goto_39

    .line 193
    :cond_b
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "需要开启麦克风权限，才能使用录音或语音识别功能哦"

    goto :goto_39

    .line 194
    :cond_16
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p1, "需要开启定位权限，才能连接蓝牙哦"

    goto :goto_39

    .line 195
    :cond_21
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "需要开启相机权限，才能进行拍照哦"

    goto :goto_39

    .line 196
    :cond_2c
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "需要开启蓝牙权限，才能连接其他设备哦"

    goto :goto_39

    :cond_37
    const-string p1, ""

    :goto_39
    return-object p1
.end method

.method private final getTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 203
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "相册"

    goto :goto_39

    .line 204
    :cond_b
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "麦克风"

    goto :goto_39

    .line 205
    :cond_16
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p1, "启定"

    goto :goto_39

    .line 206
    :cond_21
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "相机"

    goto :goto_39

    .line 207
    :cond_2c
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "蓝牙"

    goto :goto_39

    :cond_37
    const-string p1, ""

    :goto_39
    return-object p1
.end method

.method private final getWoodView(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;

    move-result-object v0

    const-string v1, "inflate(\n            Lay…          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 140
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_image_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 143
    :cond_1f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 144
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_record_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 147
    :cond_2f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 148
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_camera_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 151
    :cond_3f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 152
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_ble_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5e

    .line 155
    :cond_4f
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 156
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsIcon:Landroid/widget/ImageView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_permission_front_tips_location_kn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :cond_5e
    :goto_5e
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_permission_front_button_wood_forbid:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 160
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    const-string v2, "#7245FF"

    .line 441
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->sure:Landroid/widget/TextView;

    sget v2, Lcom/codemao/toolssdk/R$drawable;->toolsdk_selector_permission_front_button_wood_sure:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 162
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->tipsText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getNewTips(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->sure:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkDialogPermissionFrontTipsKnBinding;->forbid:Landroid/widget/TextView;

    new-instance v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda7;

    invoke-direct {v2, p3, p2, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final getWoodView$lambda$4(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .registers 2

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getWoodView$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const-string p3, "$result"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$permission"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object p0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    const-string p1, "权限未开启，部分功能可能无法使用"

    .line 169
    invoke-static {p2, p1, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_22
    return-void
.end method


# virtual methods
.method public final getPERMISSION_TYPE_BLUETOOTH()Ljava/lang/String;
    .registers 2

    .line 20
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_BLUETOOTH:Ljava/lang/String;

    return-object v0
.end method

.method public final getPERMISSION_TYPE_CAMERA()Ljava/lang/String;
    .registers 2

    .line 19
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_CAMERA:Ljava/lang/String;

    return-object v0
.end method

.method public final getPERMISSION_TYPE_IMAGES()Ljava/lang/String;
    .registers 2

    .line 17
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_IMAGES:Ljava/lang/String;

    return-object v0
.end method

.method public final getPERMISSION_TYPE_LOCATION()Ljava/lang/String;
    .registers 2

    .line 21
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    return-object v0
.end method

.method public final getPERMISSION_TYPE_RECORD()Ljava/lang/String;
    .registers 2

    .line 18
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_RECORD:Ljava/lang/String;

    return-object v0
.end method

.method public final getSystemDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getTips(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "即将申请 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 权限"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string v2, "同意"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p2, p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "拒绝"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string p2, "Builder(\n            con… })\n            .create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final showTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "要请求的权限："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "front_permission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 278
    sget-object v1, Lcom/codemao/toolssdk/utils/DialogUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DialogUtils;

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/utils/DialogUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Activity已销毁，不显示权限弹窗"

    if-eqz v1, :cond_a6

    .line 279
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_a6

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_a6

    .line 284
    :cond_41
    sget-object v3, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->PERMISSION_TYPE_LOCATION:Ljava/lang/String;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 285
    sget-object v3, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->locationDialog:Landroid/app/Dialog;

    if-nez v3, :cond_56

    new-instance v3, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$showTips$1;

    invoke-direct {v3, p4, v0}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$showTips$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;

    move-result-object v3

    :cond_56
    sput-object v3, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->locationDialog:Landroid/app/Dialog;

    .line 289
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_69

    .line 291
    :cond_5e
    new-instance v3, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$showTips$2;

    invoke-direct {v3, p4, v0}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils$showTips$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 296
    :goto_69
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 297
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a0

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_a0

    .line 302
    :cond_7e
    :try_start_7e
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_87} :catch_88

    goto :goto_9f

    :catch_88
    move-exception p1

    .line 304
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "显示权限弹窗异常："

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-void

    .line 298
    :cond_a0
    :goto_a0
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_a6
    :goto_a6
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void
.end method
