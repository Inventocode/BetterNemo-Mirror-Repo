.class public final Lcom/codemao/toolssdk/model/dsbridge/ToolMode;
.super Ljava/lang/Object;
.source "UserData.kt"


# static fields
.field public static final CATBIT:Ljava/lang/String; = "catbit"

.field public static final INSTANCE:Lcom/codemao/toolssdk/model/dsbridge/ToolMode;

.field public static final KIDS:Ljava/lang/String; = "kids"

.field public static final MICROBIT:Ljava/lang/String; = "microbit"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final TUDAO:Ljava/lang/String; = "tudao"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ToolMode;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/dsbridge/ToolMode;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/ToolMode;->INSTANCE:Lcom/codemao/toolssdk/model/dsbridge/ToolMode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
