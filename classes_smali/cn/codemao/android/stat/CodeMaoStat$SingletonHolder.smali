.class Lcn/codemao/android/stat/CodeMaoStat$SingletonHolder;
.super Ljava/lang/Object;
.source "CodeMaoStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/CodeMaoStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final instance:Lcn/codemao/android/stat/CodeMaoStat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Lcn/codemao/android/stat/CodeMaoStat;

    invoke-direct {v0}, Lcn/codemao/android/stat/CodeMaoStat;-><init>()V

    sput-object v0, Lcn/codemao/android/stat/CodeMaoStat$SingletonHolder;->instance:Lcn/codemao/android/stat/CodeMaoStat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
