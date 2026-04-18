.class public abstract Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiFile;
.super Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiWork;
.source "PythonJsApiFile.kt"


# instance fields
.field private exportDialogHelper:Lcom/codemao/toolssdk/python/jsobjects/filehelper/IExportDialogHelper;

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiWork;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    .line 8
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiFile;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-void
.end method


# virtual methods
.method public final setExportHelper$toolssdk_release(Lcom/codemao/toolssdk/python/jsobjects/filehelper/IExportDialogHelper;)V
    .registers 3

    const-string v0, "exportDialogHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiFile;->exportDialogHelper:Lcom/codemao/toolssdk/python/jsobjects/filehelper/IExportDialogHelper;

    return-void
.end method
