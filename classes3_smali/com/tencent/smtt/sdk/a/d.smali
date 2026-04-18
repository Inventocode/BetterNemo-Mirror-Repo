.class public Lcom/tencent/smtt/sdk/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/smtt/sdk/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/smtt/sdk/a/d;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_52

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/smtt/sdk/a/d;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/a/d;-><init>()V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_d} :catch_4a

    :try_start_d
    const-string v0, "ret_code"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/smtt/sdk/a/d;->a:I

    const-string v0, "next_req_interval"

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/smtt/sdk/a/d;->b:J

    const-string v0, "cmds"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_51

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/a/d;->c:Ljava/util/List;

    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/smtt/sdk/a/b;->a(Lorg/json/JSONObject;)Lcom/tencent/smtt/sdk/a/b;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v3, p0, Lcom/tencent/smtt/sdk/a/d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_45} :catch_48

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :catch_48
    move-exception v0

    goto :goto_4e

    :catch_4a
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_51
    move-object v0, p0

    :cond_52
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tencent/smtt/sdk/a/d;->a:I

    return v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/a/d;->b:J

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/smtt/sdk/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/a/d;->c:Ljava/util/List;

    return-object v0
.end method
