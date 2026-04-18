.class public final Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;
.super Ljava/lang/Object;
.source "CreateBcmNemoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic startActivity$default(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_5

    const/4 p3, 0x0

    :cond_5
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_c

    const-string p4, "KN"

    :cond_c
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_13

    const-string p5, "normal"

    :cond_13
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_1b

    const/4 p6, 0x1

    const/4 v6, 0x1

    goto :goto_1c

    :cond_1b
    move v6, p6

    :goto_1c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic startActivityMiaoCode$default(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_5

    const/4 p3, 0x0

    :cond_5
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_c

    const-string p4, "KN"

    :cond_c
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_13

    const-string p5, "normal"

    :cond_13
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_1b

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_1c

    :cond_1b
    move v6, p6

    :goto_1c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivityMiaoCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workId"

    .line 44
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "ToolsData"

    .line 45
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolMode"

    .line 46
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_30

    .line 47
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "isLandscape"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_30
    const-string p2, "showPublishButton"

    .line 50
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3e9

    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3a
    return-void
.end method

.method public final startActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13

    const-string v0, "workUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity$default(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const-string v0, "workUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolType"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolMode"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3d

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolsData"

    .line 67
    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolMode"

    .line 68
    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_33

    .line 69
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "isLandscape"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_33
    const-string p2, "showPublishButton"

    .line 72
    invoke-virtual {v1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3e9

    .line 73
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3d
    return-void
.end method

.method public final startActivityMiaoCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v9}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivityMiaoCode$default(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final startActivityMiaoCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workNemoMiaoCode"

    .line 133
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolsData"

    .line 134
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolMode"

    .line 135
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_30

    .line 136
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "isLandscape"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_30
    const-string p2, "showPublishButton"

    .line 139
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3e9

    .line 140
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3a
    return-void
.end method

.method public final startActivityTemplate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string v0, "toolType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workTemplateId"

    .line 111
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolsData"

    .line 112
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolMode"

    .line 113
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_30

    .line 114
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "isLandscape"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_30
    const-string p2, "showPublishButton"

    .line 117
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3e9

    .line 118
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3a
    return-void
.end method
