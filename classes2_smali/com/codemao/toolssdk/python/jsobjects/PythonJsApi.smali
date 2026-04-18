.class public final Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;
.super Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;
.source "PythonJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi$Companion;
    }
.end annotation


# instance fields
.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-void
.end method
