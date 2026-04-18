.class public final Lcom/ljwx/baseapp/regex/CommonRegex;
.super Ljava/lang/Object;
.source "CommonRegex.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseapp/regex/CommonRegex;

.field private static final number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/baseapp/regex/CommonRegex;

    invoke-direct {v0}, Lcom/ljwx/baseapp/regex/CommonRegex;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/regex/CommonRegex;->INSTANCE:Lcom/ljwx/baseapp/regex/CommonRegex;

    const-string v0, "^\\d+$"

    .line 9
    sput-object v0, Lcom/ljwx/baseapp/regex/CommonRegex;->number:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNumber()Ljava/lang/String;
    .registers 2

    .line 9
    sget-object v0, Lcom/ljwx/baseapp/regex/CommonRegex;->number:Ljava/lang/String;

    return-object v0
.end method
