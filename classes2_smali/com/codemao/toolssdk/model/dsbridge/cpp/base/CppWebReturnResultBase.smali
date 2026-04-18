.class public abstract Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;
.super Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultBridge;
.source "CppWebReturnResultBase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;

.field private static final failed:I

.field private static final success:I


# instance fields
.field private code:Ljava/lang/Integer;

.field private errorMessage:Ljava/lang/String;

.field private successOriginData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->Companion:Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;

    const/16 v0, 0x7d0

    .line 8
    sput v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->success:I

    const/16 v0, 0x1388

    .line 9
    sput v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->failed:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultBridge;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFailed$cp()I
    .registers 1

    .line 5
    sget v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->failed:I

    return v0
.end method

.method public static final synthetic access$getSuccess$cp()I
    .registers 1

    .line 5
    sget v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->success:I

    return v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessOriginData()Lorg/json/JSONObject;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->successOriginData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->code:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sget v2, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->success:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_18

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultBridge;->isOtherResponseSuccess$toolssdk_release()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public setCode$toolssdk_release(I)V
    .registers 2

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->code:Ljava/lang/Integer;

    return-void
.end method

.method public setErrorMessage$toolssdk_release(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setSuccessOriginData$toolssdk_release(Lorg/json/JSONObject;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->successOriginData:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallWebSimpleResult(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", successOriginData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->successOriginData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
