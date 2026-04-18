.class public final Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    .line 9
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final jsBridgeJson2Data(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 17
    :goto_12
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(src)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
