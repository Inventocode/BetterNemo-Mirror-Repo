.class public final Lcn/com/chinatelecom/account/api/d/i;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lorg/json/JSONObject;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/i;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/i;->c:Ljava/lang/String;

    return-void
.end method
