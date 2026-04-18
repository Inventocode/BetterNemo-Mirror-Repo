.class Lcn/codemao/android/stat/CMSpUtils$SingleInstance;
.super Ljava/lang/Object;
.source "CMSpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/CMSpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcn/codemao/android/stat/CMSpUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcn/codemao/android/stat/CMSpUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/stat/CMSpUtils;-><init>(Lcn/codemao/android/stat/CMSpUtils$1;)V

    sput-object v0, Lcn/codemao/android/stat/CMSpUtils$SingleInstance;->INSTANCE:Lcn/codemao/android/stat/CMSpUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/codemao/android/stat/CMSpUtils;
    .registers 1

    .line 19
    sget-object v0, Lcn/codemao/android/stat/CMSpUtils$SingleInstance;->INSTANCE:Lcn/codemao/android/stat/CMSpUtils;

    return-object v0
.end method
