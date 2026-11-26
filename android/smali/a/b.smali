.class public final synthetic La/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ganeum/calc/MainActivity;

.field public final synthetic c:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Lcom/ganeum/calc/MainActivity;Ljava/lang/Comparable;I)V
    .locals 0

    .line 1
    iput p3, p0, La/b;->a:I

    iput-object p1, p0, La/b;->b:Lcom/ganeum/calc/MainActivity;

    iput-object p2, p0, La/b;->c:Ljava/lang/Comparable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, La/b;->b:Lcom/ganeum/calc/MainActivity;

    iget-object v2, p0, La/b;->c:Ljava/lang/Comparable;

    iget v3, p0, La/b;->a:I

    packed-switch v3, :pswitch_data_0

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Lcom/ganeum/calc/MainActivity;->h:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {v1, v2}, Lupd/U;->size(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    const-wide/32 v5, 0x500000

    cmp-long v5, v3, v5

    if-lez v5, :big_known

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v4, 0x10000

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const/high16 v6, 0x500000

    if-gt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-wide/16 v3, -0x1

    goto :big_known

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v4

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.AppInfo&&AppInfo.backupOpened("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "window.AppInfo&&AppInfo.backupOpenFail&&AppInfo.backupOpenFail('read',0)"

    invoke-virtual {v1, v0}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    return-void

    :big_known
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.AppInfo&&AppInfo.backupOpenFail&&AppInfo.backupOpenFail('big',"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ganeum/calc/MainActivity;->e(Ljava/lang/String;)V

    return-void

    .line 2
    :pswitch_0
    iget-boolean v3, v1, Lcom/ganeum/calc/MainActivity;->b:Z

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/ganeum/calc/MainActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_5

    :cond_4
    iget-object v0, v1, Lcom/ganeum/calc/MainActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
