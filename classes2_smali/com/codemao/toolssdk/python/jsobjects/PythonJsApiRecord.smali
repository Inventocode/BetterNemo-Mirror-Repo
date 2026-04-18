.class public abstract Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;
.super Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiFile;
.source "PythonJsApiRecord.kt"


# instance fields
.field private cancelAudioRecordListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private startAudioRecordListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private stopAudioRecordListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiFile;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    .line 8
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-void
.end method


# virtual methods
.method public final setCancelAudioRecordListener(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->cancelAudioRecordListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setStartAudioRecordListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->startAudioRecordListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setStopAudioRecordListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->stopAudioRecordListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
