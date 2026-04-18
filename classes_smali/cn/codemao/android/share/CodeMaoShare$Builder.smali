.class public Lcn/codemao/android/share/CodeMaoShare$Builder;
.super Ljava/lang/Object;
.source "CodeMaoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/share/CodeMaoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private QQId:Ljava/lang/String;

.field private drawableId:I

.field private wechatId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/share/CodeMaoShare$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcn/codemao/android/share/CodeMaoShare$Builder;->QQId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/share/CodeMaoShare$Builder;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcn/codemao/android/share/CodeMaoShare$Builder;->wechatId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/share/CodeMaoShare$Builder;)I
    .registers 1

    .line 80
    iget p0, p0, Lcn/codemao/android/share/CodeMaoShare$Builder;->drawableId:I

    return p0
.end method


# virtual methods
.method public build()Lcn/codemao/android/share/CodeMaoShare;
    .registers 3

    .line 101
    new-instance v0, Lcn/codemao/android/share/CodeMaoShare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/share/CodeMaoShare;-><init>(Lcn/codemao/android/share/CodeMaoShare$Builder;Lcn/codemao/android/share/CodeMaoShare$1;)V

    return-object v0
.end method

.method public setQQId(Ljava/lang/String;)Lcn/codemao/android/share/CodeMaoShare$Builder;
    .registers 2

    .line 86
    iput-object p1, p0, Lcn/codemao/android/share/CodeMaoShare$Builder;->QQId:Ljava/lang/String;

    return-object p0
.end method

.method public setWechatId(Ljava/lang/String;)Lcn/codemao/android/share/CodeMaoShare$Builder;
    .registers 2

    .line 91
    iput-object p1, p0, Lcn/codemao/android/share/CodeMaoShare$Builder;->wechatId:Ljava/lang/String;

    return-object p0
.end method
