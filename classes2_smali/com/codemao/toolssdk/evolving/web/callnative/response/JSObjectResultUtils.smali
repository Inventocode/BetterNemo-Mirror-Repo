.class public final Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;
.super Ljava/lang/Object;
.source "JSObjectResultUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSObjectResultUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSObjectResultUtils.kt\ncom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils\n*L\n1#1,62:1\n20#1,6:63\n25#1:69\n*S KotlinDebug\n*F\n+ 1 JSObjectResultUtils.kt\ncom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils\n*L\n13#1:63,6\n20#1:69\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getJSIResponseExceptionJson(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 37
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSIResponseExceptionResult(ILjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/IResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getJSIResponseExceptionResult(ILjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/IResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getJSORequestDataExceptionJson()Ljava/lang/String;
    .registers 3

    .line 29
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSORequestDataExceptionResult()Lcom/codemao/toolssdk/model/dsbridge/IResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSORequestDataExceptionResult()Lcom/codemao/toolssdk/model/dsbridge/IResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const-string v2, "前端数据异常"

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7b81

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
