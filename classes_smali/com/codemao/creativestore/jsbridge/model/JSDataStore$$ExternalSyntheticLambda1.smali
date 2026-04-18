.class public final synthetic Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->$r8$lambda$y6ny4_NT6A5OyjT8N16dFtBwoaI(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
