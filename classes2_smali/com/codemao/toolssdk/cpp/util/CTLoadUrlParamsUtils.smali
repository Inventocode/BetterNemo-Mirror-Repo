.class public final Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;
.super Ljava/lang/Object;
.source "CTLoadUrlParamsUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCourseUrlKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCppOrPyth(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "course_url"

    goto :goto_d

    :cond_b
    const-string p1, "courseUrl"

    :goto_d
    return-object p1
.end method

.method public final getFileUrlKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 34
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCppOrPyth(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "work_url"

    goto :goto_d

    :cond_b
    const-string p1, "fileUrl"

    :goto_d
    return-object p1
.end method

.method public final getWorkIdKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 27
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCppOrPyth(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "work_id"

    goto :goto_d

    :cond_b
    const-string p1, "workId"

    :goto_d
    return-object p1
.end method
