.class public Lcn/codemao/android/http/model/HttpErrorDetail;
.super Ljava/lang/Object;
.source "HttpErrorDetail.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/http/model/HttpErrorDetail;->message:Ljava/lang/String;

    return-object v0
.end method
