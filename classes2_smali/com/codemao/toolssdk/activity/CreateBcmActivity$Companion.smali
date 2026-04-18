.class public final Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;
.super Ljava/lang/Object;
.source "CreateBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/activity/CreateBcmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWORK_FROM_LOCAL()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-static {}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->access$getWORK_FROM_LOCAL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getWORK_TEST_FULL_URL()Ljava/lang/String;
    .registers 2

    .line 24
    invoke-static {}, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->access$getWORK_TEST_FULL_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final startActivity(Landroid/app/Activity;JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const-string v0, "toolType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/toolssdk/activity/CreateBcmActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workId"

    .line 41
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "ToolsData"

    .line 42
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ToolMode"

    .line 43
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_30

    .line 44
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "isLandscape"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_30
    const-string p2, "showPublishButton"

    .line 47
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3e9

    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3a
    return-void
.end method
