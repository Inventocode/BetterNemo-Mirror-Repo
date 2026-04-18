.class public final Lcom/codemao/toolssdk/func/logevent/ConstLogField;
.super Ljava/lang/Object;
.source "ConstLogField.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

.field private static final URL_INIT_DURATION:Ljava/lang/String;

.field private static final VIEW_INIT_DURATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    const-string v0, "duration_native_init"

    .line 5
    sput-object v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->VIEW_INIT_DURATION:Ljava/lang/String;

    const-string v0, "duration_url_init"

    .line 6
    sput-object v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->URL_INIT_DURATION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getURL_INIT_DURATION()Ljava/lang/String;
    .registers 2

    .line 6
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->URL_INIT_DURATION:Ljava/lang/String;

    return-object v0
.end method

.method public final getVIEW_INIT_DURATION()Ljava/lang/String;
    .registers 2

    .line 5
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->VIEW_INIT_DURATION:Ljava/lang/String;

    return-object v0
.end method
