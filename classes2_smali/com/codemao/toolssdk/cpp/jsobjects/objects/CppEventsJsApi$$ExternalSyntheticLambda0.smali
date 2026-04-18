.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;->$r8$lambda$-EUAevRSQo5kgKH-UpqMvf8Z5l8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method
