.class public final Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;
.super Ljava/lang/Object;
.source "ScanQRCodeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final callIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
