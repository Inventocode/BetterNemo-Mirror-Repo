.class public final Lcom/geetest/sdk/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "https://"

.field public static b:[Ljava/lang/String; = null

.field public static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "api.geetest.com"

    const-string v1, "api.geevisit.com"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/utils/d;->b:[Ljava/lang/String;

    return-void
.end method
