.class public final Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;
.super Ljava/lang/Object;
.source "OnMessageJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

.field private static final mGson$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    .line 30
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion$mGson$2;->INSTANCE:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion$mGson$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->mGson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMGson$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 27
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->mGson$delegate:Lkotlin/Lazy;

    return-object v0
.end method
