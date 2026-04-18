.class final Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CppToolsManagerConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 68
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;->invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V
    .registers 2

    return-void
.end method
