.class final Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CppOnMessageCallWeb.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->openHistoryBackupDialog(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $result:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$2;->$result:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 247
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$2;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$2;->$result:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    invoke-direct {v1, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method
