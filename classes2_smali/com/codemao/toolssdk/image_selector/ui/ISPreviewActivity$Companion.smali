.class public final Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;
.super Ljava/lang/Object;
.source "ISPreviewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/app/Activity;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    sget p2, Lcom/codemao/toolssdk/R$anim;->toolsdk_from_right:I

    .line 66
    sget v0, Lcom/codemao/toolssdk/R$anim;->toolsdk_material_exit_empty:I

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
