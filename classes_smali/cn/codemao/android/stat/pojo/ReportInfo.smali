.class public Lcn/codemao/android/stat/pojo/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"


# static fields
.field public static final TYPE_CRASH:Ljava/lang/String; = "1"

.field public static final TYPE_NORMAL:Ljava/lang/String; = "0"


# instance fields
.field public alg:Ljava/lang/String;

.field public data:Lcn/codemao/android/stat/pojo/DataBody;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/codemao/android/stat/pojo/ReportInfo;->type:Ljava/lang/String;

    .line 42
    new-instance p1, Lcn/codemao/android/stat/pojo/DataBody;

    invoke-direct {p1}, Lcn/codemao/android/stat/pojo/DataBody;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    return-void
.end method

.method static fromJSON(Ljava/lang/String;)Lcn/codemao/android/stat/pojo/ReportInfo;
    .registers 3

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    const-class v1, Lcn/codemao/android/stat/pojo/ReportInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/stat/pojo/ReportInfo;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 71
    instance-of v1, p1, Lcn/codemao/android/stat/pojo/ReportInfo;

    if-nez v1, :cond_8

    goto :goto_1f

    .line 74
    :cond_8
    check-cast p1, Lcn/codemao/android/stat/pojo/ReportInfo;

    .line 75
    iget-object v1, p0, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    iget-object v2, p1, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    invoke-virtual {v1, v2}, Lcn/codemao/android/stat/pojo/DataBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcn/codemao/android/stat/pojo/ReportInfo;->type:Ljava/lang/String;

    iget-object p1, p1, Lcn/codemao/android/stat/pojo/ReportInfo;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 80
    iget-object v0, p0, Lcn/codemao/android/stat/pojo/ReportInfo;->data:Lcn/codemao/android/stat/pojo/DataBody;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcn/codemao/android/stat/pojo/DataBody;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    iget-object v2, p0, Lcn/codemao/android/stat/pojo/ReportInfo;->type:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_13
    xor-int/2addr v0, v1

    return v0
.end method

.method public toJSON()Ljava/lang/String;
    .registers 2

    .line 51
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
