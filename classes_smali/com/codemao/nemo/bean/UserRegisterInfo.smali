.class public Lcom/codemao/nemo/bean/UserRegisterInfo;
.super Ljava/lang/Object;
.source "UserRegisterInfo.java"


# instance fields
.field private registerTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "register_time"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegisterTime()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserRegisterInfo;->registerTime:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserRegisterInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setRegisterTime(J)V
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserRegisterInfo;->registerTime:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserRegisterInfo;->userId:Ljava/lang/String;

    return-void
.end method
