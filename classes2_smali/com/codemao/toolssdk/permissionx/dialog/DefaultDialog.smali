.class public final Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;
.super Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;
.source "DefaultDialog.kt"


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

.field private final darkColor:I

.field private final lightColor:I

.field private final message:Ljava/lang/String;

.field private final negativeText:Ljava/lang/String;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final positiveText:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget v0, Lcom/codemao/toolssdk/R$style;->toolsdk_PermissionXDefaultDialog:I

    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->permissions:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->title:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->message:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->positiveText:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    .line 43
    iput p7, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->lightColor:I

    .line 44
    iput p8, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->darkColor:I

    return-void
.end method

.method private final isDarkTheme()Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private final setupText()V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->titleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->messageText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_29

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->positiveText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 130
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_3c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3c
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_4a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 133
    :cond_52
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_5a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :goto_61
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->isDarkTheme()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_8c

    .line 136
    iget v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->darkColor:I

    if-eq v0, v3, :cond_af

    .line 137
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_74

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_74
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->darkColor:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_83

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_84

    :cond_83
    move-object v1, v0

    :goto_84
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->darkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_af

    .line 141
    :cond_8c
    iget v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->lightColor:I

    if-eq v0, v3, :cond_af

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_98

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_98
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->lightColor:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_a7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a8

    :cond_a7
    move-object v1, v0

    :goto_a8
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->lightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_af
    :goto_af
    return-void
.end method

.method private final setupWindow()V
    .registers 9

    .line 152
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x11

    if-ge v0, v1, :cond_3c

    .line 156
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 157
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    int-to-double v4, v0

    const-wide v6, 0x3feb851eb851eb85L  # 0.86

    mul-double v4, v4, v6

    double-to-int v0, v4

    .line 159
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 160
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_54

    .line 164
    :cond_3c
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 165
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 166
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    mul-double v4, v4, v6

    double-to-int v0, v4

    .line 167
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 168
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public getNegativeButton()Landroid/view/View;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->negativeText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_f

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    iget-object v0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    return-object v0

    :cond_13
    return-object v1
.end method

.method public getPermissionsToRequest()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPositiveButton()Landroid/view/View;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_a

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    const-string v1, "binding.positiveBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isPermissionLayoutEmpty$toolssdk_release()Z
    .registers 7

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    iget-object v2, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->permissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x1d

    if-ge v1, v4, :cond_33

    .line 96
    :try_start_1d
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 97
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_2c} :catch_2d

    goto :goto_7c

    :catch_2d
    move-exception v4

    .line 99
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_7c

    :cond_33
    if-ne v1, v4, :cond_40

    .line 103
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getPermissionMapOnQ()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_7c

    :cond_40
    const/16 v4, 0x1e

    if-ne v1, v4, :cond_4f

    .line 104
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getPermissionMapOnR()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_7c

    :cond_4f
    const/16 v4, 0x1f

    if-eq v1, v4, :cond_72

    const/16 v4, 0x20

    if-ne v1, v4, :cond_58

    goto :goto_72

    :cond_58
    const/16 v4, 0x21

    if-ne v1, v4, :cond_67

    .line 106
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getPermissionMapOnTiramisu()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_7c

    .line 110
    :cond_67
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getPermissionMapOnR()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_7c

    .line 105
    :cond_72
    :goto_72
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getPermissionMapOnS()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    :goto_7c
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getAllSpecialPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    :cond_8c
    if-eqz v4, :cond_d

    .line 114
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_94
    if-nez v4, :cond_97

    goto :goto_98

    :cond_97
    move-object v3, v4

    .line 116
    :goto_98
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 119
    :cond_9d
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;

    if-nez p1, :cond_1a

    const-string p1, "binding"

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1a
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkPermissionxDefaultDialogLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->setupText()V

    .line 54
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->setupWindow()V

    return-void
.end method
