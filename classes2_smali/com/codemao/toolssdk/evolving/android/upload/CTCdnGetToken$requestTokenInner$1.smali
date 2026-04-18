.class final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CTCdnGetToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestTokenInner-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.evolving.android.upload.CTCdnGetToken"
    f = "CTCdnGetToken.kt"
    l = {
        0x74
    }
    m = "requestTokenInner-bMdYcbs"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->label:I

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->access$requestTokenInner-bMdYcbs(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    return-object p1

    :cond_1d
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
