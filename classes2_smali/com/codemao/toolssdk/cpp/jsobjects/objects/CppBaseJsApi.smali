.class public abstract Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.super Ljava/lang/Object;
.source "CppBaseJsApi.kt"


# instance fields
.field private final gson$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi$gson$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi$gson$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method


# virtual methods
.method public getJOb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final gson()Lcom/google/gson/Gson;
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method
