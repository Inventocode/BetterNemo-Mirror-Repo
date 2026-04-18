.class final Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AliOSSUpload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->uploadFile(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.evolving.android.upload.AliOSSUpload"
    f = "AliOSSUpload.kt"
    l = {
        0x3c,
        0x40
    }
    m = "uploadFile"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->uploadFile(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
