.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$startRecord$recordListener$1;
.super Ljava/lang/Object;
.source "CppRecordJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecord$startRecord$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$startRecord$recordListener$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecording(I)V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$startRecord$recordListener$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$sendSoundValue(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;D)V

    return-void
.end method
