.class public final Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;
.super Ljava/lang/Object;
.source "CTConstUploadFile.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;

.field private static testAli:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTestAli()Z
    .registers 2

    .line 5
    sget-boolean v0, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;->testAli:Z

    return v0
.end method
